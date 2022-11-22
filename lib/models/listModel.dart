// To parse this JSON data, do
//
//     final groups = groupsFromJson(jsonString);

import 'dart:convert';

List<Groups> groupsFromJson(String str) => List<Groups>.from(json.decode(str).map((x) => Groups.fromJson(x)));

String groupsToJson(List<Groups> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Groups {
    Groups({
        required this.id,
        required this.name,
        required this.completedTaskCount,
        required this.taskCount,
    });

    String? id;
    String? name;
    int? completedTaskCount;
    int? taskCount;

    factory Groups.fromJson(Map<String, dynamic> json) => Groups(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        completedTaskCount: json["completedTaskCount"] == null ? null : json["completedTaskCount"],
        taskCount: json["taskCount"] == null ? null : json["taskCount"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "completedTaskCount": completedTaskCount == null ? null : completedTaskCount,
        "taskCount": taskCount == null ? null : taskCount,
    };
}
