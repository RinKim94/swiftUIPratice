//
//  ModelData.swift
//  swiftUITutorial
//
//  Created by KimRin on 9/7/24.
//

import Foundation


@Observable class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    //**번들(Bundle)**은 Apple 플랫폼에서 사용되는 파일과 리소스의 묶음
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            //filename이 확장자가 없는 파일이라면, withExtension: nil로 설정하여 찾을수 있음
            // **Bundle.main**은 해당 **프로젝트 내부에 포함된 자원의 묶음(뭉치)**을 의미합니다.
            //즉, 앱 번들 안에 있는 리소스들(이미지, JSON 파일, 사운드 파일 등)을 가리키며,
            //이 번들을 통해 프로젝트에 포함된 파일을 쉽게 찾고 사용할 수 있습니다.
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decorder = JSONDecoder()
        return try decorder.decode(T.self, from: data)
    } catch {
        fatalError()
    }
}
/*
 
 */
