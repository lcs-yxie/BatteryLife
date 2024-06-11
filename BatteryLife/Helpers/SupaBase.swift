//
//  SupaBase.swift
//  BatteryLife
//
//  Created by Yukun Xie on 2024/6/10.
//

import Foundation

import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://byvgqgpzamjkvtevojsx.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ5dmdxZ3B6YW1qa3Z0ZXZvanN4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgwNjM4OTQsImV4cCI6MjAzMzYzOTg5NH0.ftWYIxp2X3G_SBpKe5dwYlGw6s_POeXlDUzOjnDxKDk"
)
