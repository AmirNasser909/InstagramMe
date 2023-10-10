//
//  DatabaseManager.swift
//  InstagramMe
//
//  Created by MacBook Air on 09/10/2023.
//

import FirebaseDatabase

public class DataBaseManager {
    static let shared = DataBaseManager()
    let database = Database.database().reference()
    public func canCreateNewUser(with email: String, username: String, Completion: (Bool) -> Void){
        Completion(true)

    }
    
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void){
        database.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if error == nil {
                completion(true)
                return
            }else{
                completion(false)
                return
            }
        }
    }
    
}
