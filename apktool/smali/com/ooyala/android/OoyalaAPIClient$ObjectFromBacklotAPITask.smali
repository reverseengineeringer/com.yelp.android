.class Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;
.super Landroid/os/AsyncTask;
.source "OoyalaAPIClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field protected _callback:Lcom/ooyala/android/ObjectFromBacklotAPICallback;

.field final synthetic this$0:Lcom/ooyala/android/OoyalaAPIClient;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaAPIClient;Lcom/ooyala/android/ObjectFromBacklotAPICallback;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;->this$0:Lcom/ooyala/android/OoyalaAPIClient;

    .line 184
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;->_callback:Lcom/ooyala/android/ObjectFromBacklotAPICallback;

    .line 185
    iput-object p2, p0, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;->_callback:Lcom/ooyala/android/ObjectFromBacklotAPICallback;

    .line 186
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;->doInBackground([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 193
    :cond_1
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 194
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/util/Map;

    check-cast v1, Ljava/util/Map;

    .line 195
    iget-object v2, p0, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;->this$0:Lcom/ooyala/android/OoyalaAPIClient;

    invoke-virtual {v2, v0, v1}, Lcom/ooyala/android/OoyalaAPIClient;->objectFromBacklotAPI(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAPIClient$ObjectFromBacklotAPITask;->_callback:Lcom/ooyala/android/ObjectFromBacklotAPICallback;

    invoke-interface {v0, p1}, Lcom/ooyala/android/ObjectFromBacklotAPICallback;->callback(Lorg/json/JSONObject;)V

    .line 201
    return-void
.end method
