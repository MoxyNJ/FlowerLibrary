<%
Function DateStringFromNow(Byval sTheDate)
' 格式化显示时间为几个月,几天前,几小时前,几分钟前,或几秒前
Dim iSeconds, iMinutes, iHours, iDays

iSeconds = DateDiff("s", sTheDate, Now())'d/h/n/s
iMinutes = Int(iSeconds/60)
iHours = Int(iSeconds/3600)
iDays = Int(iSeconds/86400)

If iDays > 60 Then
DateStringFromNow = sTheDate
ElseIf iDays > 30 Then
DateStringFromNow = "1个月前"
ElseIf iDays > 14 Then
DateStringFromNow = "2周前"
ElseIf iDays > 7 Then
DateStringFromNow = "1周前"
ElseIf iDays > 1 Then
DateStringFromNow = iDays & "天前"
ElseIf iHours > 1 Then
DateStringFromNow = iHours & "小时前"
ElseIf iMinutes > 1 Then
DateStringFromNow = iMinutes & "分钟前"
ElseIf iSeconds >= 1 Then
DateStringFromNow = iSeconds & "秒前"
Else
DateStringFromNow = "1秒前"
End If
End Function  %>