import "./App.css";
import SignupForm from "./signup/SignupForm";
import LoginForm from "./signup/LoginForm";
import Logout from "./signup/Logout";
function App() {

  
  return (
    <div className="App">
      <header className="App-header">
        {" "}
        <h1> E-Commerce Application</h1>
        <Logout />
      </header>
      <div>
        <SignupForm />
        <LoginForm />
      </div>
    </div>
  );
}

export default App;
