//
//  File.swift
//  PotatoKit
//
//  Created by Richie on 2018/8/16.
//  Copyright © 2018 person. All rights reserved.
//

import Foundation


/// 存放常用路径
public struct FilePath {
    
    /// 沙盒路径 Documents
    public let documents = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    
    /// Library/Cache
    public let libraryCache = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    
    /// Library/Preference
    public let libraryPreference = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.libraryDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    
    /// tmp
    public let tmp = NSTemporaryDirectory()
    
}
