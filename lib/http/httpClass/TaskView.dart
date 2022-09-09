/*
 * @Description: 
 * @Version: 1.0
 * @Autor: zhangle
 * @Date: 2022-07-06 16:55:26
 * @LastEditors: zhangle
 * @LastEditTime: 2022-07-08 11:22:27
 */
// https://app.quicktype.io/ 
class TaskView {
  String? taskId;
  String? name;
  int? status;
  int? startedAt;
  int? expiredAt;
  int? createdAt;
  String? startSignatory;
  String? phone;
  String? signatory;
  int? refused;

  TaskView(
      {this.taskId,
      this.name,
      this.status,
      this.startedAt,
      this.expiredAt,
      this.createdAt,
      this.startSignatory,
      this.phone,
      this.signatory,
      this.refused});

  TaskView.fromJson(Map<String, dynamic> json) {
    taskId = json['taskId'];
    name = json['name'];
    status = json['status'];
    startedAt = json['startedAt'];
    expiredAt = json['expiredAt'];
    createdAt = json['createdAt'];
    startSignatory = json['startSignatory'];
    phone = json['phone'];
    signatory = json['signatory'];
    refused = json['refused'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['taskId'] = taskId;
    data['name'] = name;
    data['status'] = status;
    data['startedAt'] = startedAt;
    data['expiredAt'] = expiredAt;
    data['createdAt'] = createdAt;
    data['startSignatory'] = startSignatory;
    data['phone'] = phone;
    data['signatory'] = signatory;
    data['refused'] = refused;
    return data;
  }
}
