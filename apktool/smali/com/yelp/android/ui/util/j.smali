.class public Lcom/yelp/android/ui/util/j;
.super Landroid/os/AsyncTask;
.source "CreateGoogleAccountAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/ui/util/j$a;",
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

    iput-object v0, p0, Lcom/yelp/android/ui/util/j;->a:Ljava/lang/ref/WeakReference;

    .line 53
    iput-object p3, p0, Lcom/yelp/android/ui/util/j;->b:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/yelp/android/ui/util/j;->c:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/yelp/android/ui/util/j;->d:I

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/yelp/android/ui/util/j$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/yelp/android/ui/util/j$a;

    const-string/jumbo v1, "given_name"

    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/util/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "family_name"

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/util/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/util/j;->c:Ljava/lang/String;

    const-string/jumbo v4, "birthday"

    invoke-direct {p0, p1, v4}, Lcom/yelp/android/ui/util/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gender"

    invoke-direct {p0, p1, v5}, Lcom/yelp/android/ui/util/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "picture"

    invoke-direct {p0, p1, v6}, Lcom/yelp/android/ui/util/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 111
    :goto_0
    array-length v2, v1

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 112
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 114
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
    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 135
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/util/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Lcom/yelp/android/ui/util/j$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/yelp/android/ui/util/j$1;-><init>(Lcom/yelp/android/ui/util/j;Lcom/yelp/android/ui/activities/ActivityCreateAccount;I)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/yelp/android/ui/util/j$a;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x6

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/util/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    .line 61
    if-nez v0, :cond_0

    move-object v0, v2

    .line 96
    :goto_0
    return-object v0

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/j;->a()Ljava/lang/String;

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

    .line 69
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 71
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 72
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 73
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/util/j;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/j;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/j$a;

    move-result-object v0

    .line 75
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string/jumbo v1, "GoogleAuth"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/yelp/android/au/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lcom/yelp/android/au/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v2

    .line 96
    goto :goto_0

    .line 77
    :cond_1
    const/16 v5, 0x191

    if-ne v4, v5, :cond_2

    .line 78
    :try_start_1
    invoke-static {v0, v3}, Lcom/google/android/gms/auth/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "GoogleAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Server auth error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/util/j;->a(Ljava/io/InputStream;)Ljava/lang/String;

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

    .line 89
    :catch_1
    move-exception v0

    .line 90
    const-string/jumbo v1, "GoogleAuth"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/yelp/android/au/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Lcom/yelp/android/au/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 81
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

    .line 92
    :catch_2
    move-exception v0

    .line 93
    const-string/jumbo v1, "GoogleAuth"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/yelp/android/au/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/yelp/android/au/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected a()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x6

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/util/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    .line 140
    if-nez v0, :cond_0

    move-object v0, v1

    .line 166
    :goto_0
    return-object v0

    .line 144
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/ui/util/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/util/j;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/auth/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 147
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

    invoke-static {v5, v2, v3}, Lcom/yelp/android/au/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {v0}, Lcom/yelp/android/au/a;->a(Ljava/lang/Throwable;)V

    .line 152
    const v0, 0x7f070314

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/j;->a(I)V

    :goto_1
    move-object v0, v1

    .line 166
    goto :goto_0

    .line 153
    :catch_1
    move-exception v2

    .line 159
    invoke-virtual {v2}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/util/j;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/j;->cancel(Z)Z

    goto :goto_1

    .line 161
    :catch_2
    move-exception v0

    .line 162
    const-string/jumbo v2, "GoogleAuth"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/yelp/android/au/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v0}, Lcom/yelp/android/au/a;->a(Ljava/lang/Throwable;)V

    .line 164
    const v0, 0x7f070316

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/j;->a(I)V

    goto :goto_1
.end method

.method protected a(Lcom/yelp/android/ui/util/j$a;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/util/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    .line 102
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/util/j$a;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/j;->a([Ljava/lang/Void;)Lcom/yelp/android/ui/util/j$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/yelp/android/ui/util/j$a;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/j;->a(Lcom/yelp/android/ui/util/j$a;)V

    return-void
.end method
