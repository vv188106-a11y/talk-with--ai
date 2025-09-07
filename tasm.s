<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>AI Talking Website</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #4f46e5, #3b82f6);
      color: white;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
      padding: 20px;
      text-align: center;
    }

    h1 {
      margin-bottom: 1rem;
    }

    textarea {
      width: 100%;
      max-width: 500px;
      height: 120px;
      padding: 1rem;
      font-size: 1rem;
      border: none;
      border-radius: 8px;
      resize: none;
      outline: none;
    }

    button {
      margin-top: 1rem;
      background-color: #22c55e;
      color: white;
      padding: 0.75rem 1.5rem;
      border: none;
      border-radius: 6px;
      font-size: 1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #16a34a;
    }

    footer {
      margin-top: 2rem;
      font-size: 0.8rem;
      color: #cbd5e1;
    }
  </style>
</head>
<body>

  <h1>🗣️ AI Talking Website</h1>
  <p>Type something below and click "Speak" — your browser will talk!</p>

  <textarea id="textInput" placeholder="Type your message here..."></textarea>
  <br>
  <button onclick="speak()">Speak</button>

  <footer>
    Powered by Web Speech API | No server needed
  </footer>

  <script>
    function speak() {
      const text = document.getElementById('textInput').value;
      if (!text.trim()) {
        alert("Please enter some text!");
        return;
      }

      const utterance = new SpeechSynthesisUtterance(text);
      speechSynthesis.speak(utterance);
    }
  </script>

</body>
</html>