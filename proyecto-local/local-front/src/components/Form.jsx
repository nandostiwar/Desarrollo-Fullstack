import { useState } from "react";
import '../styles/Form.css';
import { useNavigate } from "react-router-dom";

function Form({callback}){
    const [username, setUsername] = useState('');
    const goTo = useNavigate();

    async function handleSubmit(e){
        e.preventDefault();
        const result = await fetch(`http://localhost:4200/v1/local/validar/${username}`, {
            method: 'POST',
            headers: {"Content-Type": "application/json"}
        });

        const resultJson = await result.json();
        callback(resultJson.rol);
        
        if(resultJson.rol==='admin'){
            goTo('/admin');
        }else if(resultJson.rol==='mesero'){
            goTo('/mesero');
        }
        
    }
    return (
        
        <div className="container-form">
            <h1>Delicia Express</h1>
            <form onSubmit={handleSubmit}>
                <input id="input-name" type="text" placeholder="Nombre de Usuario" onChange={(e)=>setUsername(e.target.value)}/><br />
                <input id="btn-submit" type="submit" value="INGRESAR"/>
            </form>
        </div>
        
    )
}
export default Form;