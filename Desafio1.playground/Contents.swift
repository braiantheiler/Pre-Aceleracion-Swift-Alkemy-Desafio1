import UIKit



typealias Direccion = (ciudad:String, partido: String, provincia: String,calle: [String:Any], pais:String, codigoPostal: Int, piso: Int?, departamento:String?)

let miPrimeraDireccion: Direccion = (
    ciudad : "Rio Tercero",
    partido : "Tercero Arriba",
    provincia : "Córdoba",
    calle : [ "nombreDeCalle" : "Pasaje Bujados",
              "numero" : 543,
              "entreCalle1" : "Lopez y Planes",
              "entreCalle2" : "Madrid"
    ],
    pais : "Argentina",
    codigoPostal: 5850,
    piso : 2,
    departamento : "A"
)

let miSegundaDireccion: Direccion = (
    ciudad : "Villa María",
    partido : "San Martin",
    provincia : "Córdoba",
    calle : [ "nombreDeCalle" : "Jose Ingenieros",
              "numero" : 80,
              "entreCalle1" : "Buenos Aires",
              "entreCalle2" : "Santa Fe"
    ],
    pais : "Argentina",
    codigoPostal: 5001,
    piso : 4,
    departamento : "E"
)

let miTerceraDireccion: Direccion = (
    ciudad : "Bell Ville",
    partido : "Union",
    provincia : "Córdoba",
    calle : [ "nombreDeCalle" : "General Paz",
              "numero" : 123,
              "entreCalle1" : "Entre Rios",
              "entreCalle2" : "Catamarca"
    ],
    pais : "Argentina",
    codigoPostal: 2550,
    piso : nil,
    departamento : nil
)

func formatearDireccion (direccion:Direccion) -> String {
    let direccionCompleta = "La direccion completa es \(direccion)"
    return direccionCompleta
}

let stringCompleto = (formatearDireccion(direccion: miPrimeraDireccion))
    Swift.print(stringCompleto)

    func pisoDepartamento (pisoDepartamento: Direccion) -> String {
        if let pisoExiste = pisoDepartamento.piso, let departamentoExiste = pisoDepartamento.departamento{
            return "Piso \(pisoExiste) y departamento \(departamentoExiste)"
        } else {
        return "No existe piso o departamento"
    }
}
    print(pisoDepartamento(pisoDepartamento: miSegundaDireccion))
    print(pisoDepartamento(pisoDepartamento: miTerceraDireccion))

