%dw 2.0
output application/json
/*
in these we dont need any explicit module like we use to have in update a function
 Here i used update operator to update the field of a given object as of the desired output form  whenever we want to update the field of a given object we can use update operator 
 */
---
payload  update {
    //Here i used to update the username "MULESOFT1" with"mulesoft1" by using update function
    case .username -> lower($)
    //in these i used to update street from "MG Road" to "FC Road" with the help of update function
    case .location.address.street -> "FC Road"
}