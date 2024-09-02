import { expect } from "chai";

// describe("Maiuscula",()=>{

//     it("Deve falhar ao não ser passado uma string", ()=>{
//         let input = null;
//         expect(StringUtils.Maiuscula(input)).to.throw("Parameter is not string")
//     })

//     it("Deve não fazer nada ao ser passada string vazia", ()=>{
//         let input = "";
//         let result = StringUtils.Maiuscula(input);
//         expect(result).to.equal("");
//     })

//     it("Deve não fazer nada ao ser passada string sem letras", ()=>{
//         let input = "  _ +12-=3";
//         let result = StringUtils.Maiuscula(input);
//         expect(result).to.equal(input);
//     })

//     it("Deve não fazer nada ao ser passada apenas letras maiusculas", ()=>{
//         let input = "ABCDEFGHIJKL";
//         let result = StringUtils.Maiuscula(input);
//         expect(result).to.equal("ABCDEFGHIJKL");
//     })

//     it("Deve modificar todas as letras para maiusculas", ()=>{
//         let input = "abcdefghijkl";
//         let result = StringUtils.Maiuscula(input);
//         expect(result).to.equal("ABCDEFGHIJKL");
//     })

//     it("Deve modificar algumas letras para maiusculas", ()=>{
//         let input = "ABCDEFghijkl";
//         let result = StringUtils.Maiuscula(input);
//         expect(result).to.equal("ABCDEFGHIJKL");
//     })
// });