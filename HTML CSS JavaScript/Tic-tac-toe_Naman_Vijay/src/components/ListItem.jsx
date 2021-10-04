function ListItem(props){

    return <li className={props.className} onClick={props.onClick}> {props.value} </li>
}
export default ListItem;