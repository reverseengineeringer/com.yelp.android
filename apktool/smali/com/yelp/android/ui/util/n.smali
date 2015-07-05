.class public Lcom/yelp/android/ui/util/n;
.super Landroid/os/AsyncTask;
.source "CreateGoogleAccountAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/ui/util/p;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/ActivityCreateAccount;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/n;->a:Ljava/lang/ref/WeakReference;

    .line 53
    iput-object p3, p0, Lcom/yelp/android/ui/util/n;->b:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/yelp/android/ui/util/n;->c:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/yelp/android/ui/util/n;->d:I

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/yelp/android/ui/util/p;
    .locals 7

    .prologue
    .line 115
    new-instance v0, Lcom/yelp/android/ui/util/p;

    const-string/jumbo v1, "given_name"

    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "family_name"

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/util/n;->c:Ljava/lang/String;

    const-string/jumbo v4, "birthday"

    invoke-direct {p0, p1, v4}, Lcom/yelp/android/ui/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gender"

    invoke-direct {p0, p1, v5}, Lcom/yelp/android/ui/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "picture"

    invoke-direct {p0, p1, v6}, Lcom/yelp/android/ui/util/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 107
    :goto_0
    array-length v2, v1

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 108
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/util/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Lcom/yelp/android/ui/util/o;

    invoke-direct {v1, p0, v0, p1}, Lcom/yelp/android/ui/util/o;-><init>(Lcom/yelp/android/ui/util/n;Lcom/yelp/android/ui/activities/ActivityCreateAccount;I)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/yelp/android/ui/util/p;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x6

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/util/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    .line 61
    if-nez v0, :cond_0

    move-object v0, v2

    .line 92
    :goto_0
    return-object v0

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/n;->a()Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "https://www.googleapis.com/oauth2/v1/userinfo?access_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 69
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 70
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 72
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/util/n;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/n;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/p;

    move-result-object v0

    .line 73
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string/jumbo v1, "GoogleAuth"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/crashlytics/android/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v2

    .line 92
    goto :goto_0

    .line 75
    :cond_1
    const/16 v5, 0x191

    if-ne v4, v5, :cond_2

    .line 76
    :try_start_1
    invoke-static {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "GoogleAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Server auth error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/util/n;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    const-string/jumbo v1, "GoogleAuth"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/crashlytics/android/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v0}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 79
    :cond_2
    :try_start_2
    const-string/jumbo v0, "GoogleAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Server returned the following error code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 88
    :catch_2
    move-exception v0

    .line 89
    const-string/jumbo v1, "GoogleAuth"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/crashlytics/android/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v0}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x6

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/util/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    .line 135
    if-nez v0, :cond_0

    move-object v0, v1

    .line 159
    :goto_0
    return-object v0

    .line 139
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/ui/util/n;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/util/n;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v2, "GoogleAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GooglePlayServicesAvailabilityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/crashlytics/android/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v0}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    .line 145
    const v0, 0x7f0702cb

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/n;->a(I)V

    :goto_1
    move-object v0, v1

    .line 159
    goto :goto_0

    .line 146
    :catch_1
    move-exception v2

    .line 152
    invoke-virtual {v2}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/util/n;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/n;->cancel(Z)Z

    goto :goto_1

    .line 154
    :catch_2
    move-exception v0

    .line 155
    const-string/jumbo v2, "GoogleAuth"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/crashlytics/android/d;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    .line 157
    const v0, 0x7f0702cd

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/n;->a(I)V

    goto :goto_1
.end method

.method protected a(Lcom/yelp/android/ui/util/p;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/util/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    .line 98
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/util/p;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/n;->a([Ljava/lang/Void;)Lcom/yelp/android/ui/util/p;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/yelp/android/ui/util/p;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/n;->a(Lcom/yelp/android/ui/util/p;)V

    return-void
.end method
