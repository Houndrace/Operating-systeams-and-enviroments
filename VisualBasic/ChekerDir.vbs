dim FolderPath
dim FSO
dim objFolder
dim objFile
dim str
dim subFolder
dim filesCount

filesCount = 0
str = ""
FolderPath = ""

Set  FSO = CreateObject ("Scripting.FileSystemObject")

Do Until FSO.FolderExists (FolderPath)
FolderPath = InputBox ("������� ��� �����: ")
Loop

Set objFolder = FSO.GetFolder (FolderPath)

ShowSubDir(objFolder)

MsgBox str & "���������� ������: " & CStr(filesCount)

Sub ShowSubDir(folder)
			For Each subFolder in Folder.SubFolders
				For Each objFile in subFolder.Files
					str = str & "��� ����� " & objFile.Name & " ������ " & CStr(objFile.Size) & vbLf
					filesCount = filesCount + 1
				Next
				ShowSubDir(subFolder)
			Next
End Sub