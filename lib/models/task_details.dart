
class TaskDetail {

  String id, _description, _isDone;

  TaskDetail(this.id, this._description, this._isDone);

  String get description => _description;
  String get isDone => _isDone;

  TaskDetail.fromMap(dynamic obj){
    this.id = obj['id'];
    this._description = obj['description'];
    this._isDone = obj['is_done'];
  }

  Map<String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    if(id != null){
      map['id'] = id;
    }
    map['description'] = _description;
    return map;
  }

}