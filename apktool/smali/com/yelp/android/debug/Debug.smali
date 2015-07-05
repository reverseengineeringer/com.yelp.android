.class public Lcom/yelp/android/debug/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static c:[Ljava/lang/String;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field public b:Z

.field private final d:Lcom/yelp/android/appdata/n;

.field private e:Lorg/apache/http/conn/ssl/SSLSocketFactory;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "yelp4.5:///user/check_in_offers"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "yelp4.5:///search?check_in_offers=1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "yelp4.2:///user/badge/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "yelp4:///biz/89ahv989w8hj4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "yelp4:///search?terms=Beer&category=bars&location=435+Hayes+St,+SF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/debug/Debug;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/appdata/n;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/yelp/android/debug/Debug;->d:Lcom/yelp/android/appdata/n;

    .line 127
    const-string/jumbo v0, "yelp.android.debug"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "gzip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/debug/Debug;->g:Z

    .line 129
    iput-boolean v2, p0, Lcom/yelp/android/debug/Debug;->b:Z

    .line 130
    invoke-virtual {p0, p1}, Lcom/yelp/android/debug/Debug;->a(Landroid/content/Context;)V

    .line 131
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/debug/Debug;->e:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 157
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->e:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/yelp/android/services/d;->a(Lorg/apache/http/conn/scheme/SocketFactory;)V

    .line 176
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 195
    iput-boolean p2, p0, Lcom/yelp/android/debug/Debug;->f:Z

    .line 196
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "start_intent"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method public a(Lcom/yelp/android/debug/Debug$ApiEndpoint;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 185
    invoke-static {p1}, Lcom/yelp/android/services/x;->a(Lcom/yelp/android/debug/Debug$ApiEndpoint;)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->d:Lcom/yelp/android/appdata/n;

    invoke-static {}, Lcom/yelp/android/services/x;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/n;->a(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "endpoint"

    invoke-virtual {p1}, Lcom/yelp/android/debug/Debug$ApiEndpoint;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method public a(Lcom/yelp/android/debug/h;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 179
    invoke-static {p1}, Lcom/yelp/android/services/x;->a(Lcom/yelp/android/debug/h;)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->d:Lcom/yelp/android/appdata/n;

    invoke-static {}, Lcom/yelp/android/services/x;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/n;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "hostAddress"

    invoke-virtual {p1}, Lcom/yelp/android/debug/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    iput-object p1, p0, Lcom/yelp/android/debug/Debug;->h:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "debugSession"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/yelp/android/debug/Debug;->g:Z

    .line 201
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gzip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/yelp/android/debug/Debug;->f:Z

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 263
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.debug.ActivityDebugButtonThemes"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "search_cache"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "search_cache"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "dfp_dev"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/yelp/android/debug/Debug;->g:Z

    return v0
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_yelplog_toasts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    return-void
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "dfp_dev"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_yelplog_toasts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->e:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-object v0
.end method
