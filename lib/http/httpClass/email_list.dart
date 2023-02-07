
class EmailList {
  int? page;
  int? size;
  int? total;
  int? pages;
  List<Data>? data;

  EmailList({this.page, this.size, this.total, this.pages, this.data});

  EmailList.fromJson(Map<String, dynamic> json) {
    if(json["page"] is int) {
      page = json["page"];
    }
    if(json["size"] is int) {
      size = json["size"];
    }
    if(json["total"] is int) {
      total = json["total"];
    }
    if(json["pages"] is int) {
      pages = json["pages"];
    }
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["page"] = page;
    _data["size"] = size;
    _data["total"] = total;
    _data["pages"] = pages;
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Data {
  int? id;
  int? userId;
  String? serialNo;
  String? fileHash;
  String? fileName;
  String? proveEmail;
  String? mailId;
  String? subject;
  String? downSubject;
  String? fromName;
  String? fromEmail;
  String? emailTo;
  String? emailCc;
  String? pdfStorePath;
  String? tsaStorePath;
  String? sourceFileStorePath;
  String? zipStorePath;
  int? consumeTsCount;
  int? applyType;
  int? applyStatus;
  int? returnStatus;
  int? remindStatus;
  int? delFlag;
  int? sendAt;
  int? applyAt;
  int? storeExpiredAt;
  int? storeExpired;

  Data({this.id, this.userId, this.serialNo, this.fileHash, this.fileName, this.proveEmail, this.mailId, this.subject, this.downSubject, this.fromName, this.fromEmail, this.emailTo, this.emailCc, this.pdfStorePath, this.tsaStorePath, this.sourceFileStorePath, this.zipStorePath, this.consumeTsCount, this.applyType, this.applyStatus, this.returnStatus, this.remindStatus, this.delFlag, this.sendAt, this.applyAt, this.storeExpiredAt, this.storeExpired});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["userId"] is int) {
      userId = json["userId"];
    }
    if(json["serialNo"] is String) {
      serialNo = json["serialNo"];
    }
    if(json["fileHash"] is String) {
      fileHash = json["fileHash"];
    }
    if(json["fileName"] is String) {
      fileName = json["fileName"];
    }
    if(json["proveEmail"] is String) {
      proveEmail = json["proveEmail"];
    }
    if(json["mailId"] is String) {
      mailId = json["mailId"];
    }
    if(json["subject"] is String) {
      subject = json["subject"];
    }
    if(json["downSubject"] is String) {
      downSubject = json["downSubject"];
    }
    if(json["fromName"] is String) {
      fromName = json["fromName"];
    }
    if(json["fromEmail"] is String) {
      fromEmail = json["fromEmail"];
    }
    if(json["emailTo"] is String) {
      emailTo = json["emailTo"];
    }
    if(json["emailCc"] is String) {
      emailCc = json["emailCc"];
    }
    if(json["pdfStorePath"] is String) {
      pdfStorePath = json["pdfStorePath"];
    }
    if(json["tsaStorePath"] is String) {
      tsaStorePath = json["tsaStorePath"];
    }
    if(json["sourceFileStorePath"] is String) {
      sourceFileStorePath = json["sourceFileStorePath"];
    }
    if(json["zipStorePath"] is String) {
      zipStorePath = json["zipStorePath"];
    }
    if(json["consumeTsCount"] is int) {
      consumeTsCount = json["consumeTsCount"];
    }
    if(json["applyType"] is int) {
      applyType = json["applyType"];
    }
    if(json["applyStatus"] is int) {
      applyStatus = json["applyStatus"];
    }
    if(json["returnStatus"] is int) {
      returnStatus = json["returnStatus"];
    }
    if(json["remindStatus"] is int) {
      remindStatus = json["remindStatus"];
    }
    if(json["delFlag"] is int) {
      delFlag = json["delFlag"];
    }
    if(json["sendAt"] is int) {
      sendAt = json["sendAt"];
    }
    if(json["applyAt"] is int) {
      applyAt = json["applyAt"];
    }
    if(json["storeExpiredAt"] is int) {
      storeExpiredAt = json["storeExpiredAt"];
    }
    if(json["storeExpired"] is int) {
      storeExpired = json["storeExpired"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["userId"] = userId;
    _data["serialNo"] = serialNo;
    _data["fileHash"] = fileHash;
    _data["fileName"] = fileName;
    _data["proveEmail"] = proveEmail;
    _data["mailId"] = mailId;
    _data["subject"] = subject;
    _data["downSubject"] = downSubject;
    _data["fromName"] = fromName;
    _data["fromEmail"] = fromEmail;
    _data["emailTo"] = emailTo;
    _data["emailCc"] = emailCc;
    _data["pdfStorePath"] = pdfStorePath;
    _data["tsaStorePath"] = tsaStorePath;
    _data["sourceFileStorePath"] = sourceFileStorePath;
    _data["zipStorePath"] = zipStorePath;
    _data["consumeTsCount"] = consumeTsCount;
    _data["applyType"] = applyType;
    _data["applyStatus"] = applyStatus;
    _data["returnStatus"] = returnStatus;
    _data["remindStatus"] = remindStatus;
    _data["delFlag"] = delFlag;
    _data["sendAt"] = sendAt;
    _data["applyAt"] = applyAt;
    _data["storeExpiredAt"] = storeExpiredAt;
    _data["storeExpired"] = storeExpired;
    return _data;
  }
}