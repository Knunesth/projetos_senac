const express = require('express');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');

const app = express();
app.use(express.json()); 

let tarefas = [];
const salt = bcrypt.genSaltSync(10);
const hashedPassword = bcrypt.hashSync('senha123', salt);
const users = [
    { id: 1, username: 'usuario', password: hashedPassword }
];

const JWT_SECRET = 'segredo'; // Mude isso em um projeto real!

// --- Middleware de Autenticação ---
const autenticar = (req, res, next) => {
    const token = req.headers.authorization?.split(' ')[1];

    if (!token) {
        return res.status(401).json({ mensagem: 'Token não encontrado' });
    }

    // Verifica se o token é válido
    jwt.verify(token, JWT_SECRET, (err, decoded) => {
        if (err) {
            return res.status(401).json({ mensagem: 'Token inválido' });
        }
        req.userId = decoded.id;
        next();
    });
};



app.get('/', (req, res) => {
    res.send('Bem-vindo à API de Tarefas!');
});

app.post('/login', (req, res) => {
    const { username, password } = req.body;

    // 1. Encontra o usuário
    const user = users.find(u => u.username === username);
    if (!user) {
        return res.status(401).json({ mensagem: 'Credenciais inválidas' });
    }

    // 2. Compara a senha enviada com a senha criptografada no "banco"
    const isPasswordCorrect = bcrypt.compareSync(password, user.password);
    if (!isPasswordCorrect) {
        return res.status(401).json({ mensagem: 'Credenciais inválidas' });
    }

    const token = jwt.sign(
        { id: user.id },
        JWT_SECRET,
        { expiresIn: '1h' } 
    );

    res.json({ token });
});


// --- Rotas de Tarefas (CRUD) ---

app.post('/tarefas', (req, res) => {
    const { nome } = req.body;
    if (!nome) {
        return res.status(400).json({ mensagem: 'O nome é obrigatório' });
    }
    const novaTarefa = { id: tarefas.length + 1, nome };
    tarefas.push(novaTarefa);
    res.status(201).json(novaTarefa);
});

app.get('/tarefas', (req, res) => {
    res.json(tarefas);
});

app.put('/tarefas/:id', (req, res) => {
    const { id } = req.params;
    const { nome } = req.body;

    let tarefa = tarefas.find(t => t.id == id);

    if (!tarefa) {
        return res.status(404).json({ mensagem: 'Tarefa não encontrada' });
    }

    tarefa.nome = nome;
    res.json(tarefa);
});

app.delete('/tarefas/:id', autenticar, (req, res) => {
    const { id } = req.params;
    
    // Mostra quem está tentando deletar (só para fins de teste)
    console.log(`Usuário com ID ${req.userId} está deletando a tarefa ${id}`);

    const tarefaIndex = tarefas.findIndex(t => t.id == id);
    
    if (tarefaIndex === -1) {
        return res.status(404).json({ mensagem: 'Tarefa não encontrada' });
    }

    tarefas.splice(tarefaIndex, 1); // Remove a tarefa do array
    res.status(204).send(); // 204 = No Content (Sucesso, sem corpo de resposta)
});


// --- Iniciando o Servidor ---
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});