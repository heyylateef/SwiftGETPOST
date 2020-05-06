import Foundation


func getRequest(){
    
let url = URL(string: "https://jsonplaceholder.typicode.com/t/")!

let task = URLSession.shared.dataTask(with: url){
    data, response, error in

    //Optional; catches possible error on client, passes if no error occurs
    if error != nil || data == nil {
        print("Client error!")
        return
    }
    //Optional; gets HTTP response, 200 is ok, 500 is bad, google anything else
    guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
        print("Server error!")
        return
    }
    
    //Required; encodes data to json format
    do {
        let json = try JSONSerialization.jsonObject(with: data!, options: [])
        print(json)
    } catch {
        print("JSON error: \(error.localizedDescription)")
    }
}
    task.resume()
}

func postRequest() -> [String:String]{

let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    
var request = URLRequest(url: url)
request.httpMethod = "POST"

//HTTP Headers; notifies server that the data being sent is in json format
request.setValue("application/json", forHTTPHeaderField: "Content-Type")

//creates a dictionary (create some JSON data to send back to server); dummy data is typed below
let json = [
    "title": "heyylateef",
    "body": "Mo fe gba Server data. Se data ni dada?",
    "userID": "315"
]
//encodes given dictionary (in example, its "json") to JSON format
let jsonData = try! JSONSerialization.data(withJSONObject: json, options: [])

//uploads (POST) the data, now in JSON format, to the URL
    let task = URLSession.shared.uploadTask(with: request, from: jsonData) { data, response, error in
    if let data = data, let dataString = String(data: data, encoding: .utf8) {
        print(dataString)
    }
    //Returns HHTP response if
    if let httpResponse = response as? HTTPURLResponse {
        print(httpResponse.statusCode)
    }
}

task.resume()
return json
}

postRequest()


