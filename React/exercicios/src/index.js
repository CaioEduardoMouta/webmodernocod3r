import React from 'react'
import ReactDOM from 'react-dom'



/* import Primeiro from './componentes/Primeiro'
 */

 import Pai from './componentes/Pai'
 import Filho from './componentes/Filho'


ReactDOM.render(
<div>
    <Pai nome="Caio" sobrenome="Mouta" >
        <Filho nome="Maya" />
        <Filho nome="Fabrizio" />
        <Filho nome="Leonardo" />
    </Pai>
</div>
,document.getElementById('root'))