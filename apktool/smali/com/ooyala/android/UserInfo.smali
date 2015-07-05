.class Lcom/ooyala/android/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field public accountId:Ljava/lang/String;

.field public continent:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public device:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    :try_start_0
    const-string/jumbo v0, "account_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    const-string/jumbo v0, "account_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/UserInfo;->accountId:Ljava/lang/String;

    .line 20
    :cond_0
    const-string/jumbo v0, "continent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    const-string/jumbo v0, "continent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/UserInfo;->continent:Ljava/lang/String;

    .line 23
    :cond_1
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/UserInfo;->country:Ljava/lang/String;

    .line 26
    :cond_2
    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 27
    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/UserInfo;->device:Ljava/lang/String;

    .line 29
    :cond_3
    const-string/jumbo v0, "domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 30
    const-string/jumbo v0, "domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/UserInfo;->domain:Ljava/lang/String;

    .line 32
    :cond_4
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 33
    const-string/jumbo v0, "ip_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/UserInfo;->ipAddress:Ljava/lang/String;

    .line 35
    :cond_5
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 36
    const-string/jumbo v0, "language"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/UserInfo;->language:Ljava/lang/String;

    .line 38
    :cond_6
    const-string/jumbo v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 39
    const-string/jumbo v0, "timezone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/UserInfo;->timezone:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_7
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ooyala/android/UserInfo;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getContient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ooyala/android/UserInfo;->continent:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ooyala/android/UserInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ooyala/android/UserInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ooyala/android/UserInfo;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ooyala/android/UserInfo;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ooyala/android/UserInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ooyala/android/UserInfo;->timezone:Ljava/lang/String;

    return-object v0
.end method
