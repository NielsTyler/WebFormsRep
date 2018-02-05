<%@ Page Title="Den" Language="C#" AutoEventWireup="true" CodeBehind="DenForm1.aspx.cs" Inherits="WebApplication1.Den.DenForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body>
    <form id="rsvpform" runat="server">
            

        <div>
            <h1>Новый год у Татьяны!</h1>
            <p>Мы устроим классную вечеринку и вы приглашены!</p>
        </div>
        <div>
            <label>Ваше имя:</label><input type="text" name="name" /></div>
        <div>
            <label>Ваш email:</label><input type="text" name="email" /></div>
        <div>
            <label>Ваш телефон:</label><input type="text" name="phone" /></div>
        <div>
            <label>Вы придете?</label>
            <select id="willattend" name="willattend">
                <option value="">Выберите один из вариантов</option>
                <option value="true">Да</option>
                <option value="false">Нет</option>
            </select>
        </div>
        <div>
            <button type="submit">Отправить приглашение RSVP</button>
        </div>
        <p>
            <asp:Label ID="testLabel" runat="server" Text="Label" ViewStateMode="Disabled"></asp:Label>
<br/>
            <asp:Button ID="Button1" runat="server" Text="Button" OnCommand="DenCommand"/>
            <asp:FileUpload ID="FileUpload1" runat="server" OnLoad="FileUpload1_Load"  />
        </p>
        <asp:HiddenField ID="testHiddenField" runat="server" />
    </form>
</body>
</html>
