.class final Lcom/crashlytics/android/core/q$1;
.super Lorg/json/JSONObject;
.source "MetaDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/q;->a(Lcom/crashlytics/android/core/y;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/y;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/crashlytics/android/core/q$1;->a:Lcom/crashlytics/android/core/y;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/crashlytics/android/core/q$1;->a:Lcom/crashlytics/android/core/y;

    iget-object v1, v1, Lcom/crashlytics/android/core/y;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/q$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v0, "userName"

    iget-object v1, p0, Lcom/crashlytics/android/core/q$1;->a:Lcom/crashlytics/android/core/y;

    iget-object v1, v1, Lcom/crashlytics/android/core/y;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/q$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v0, "userEmail"

    iget-object v1, p0, Lcom/crashlytics/android/core/q$1;->a:Lcom/crashlytics/android/core/y;

    iget-object v1, v1, Lcom/crashlytics/android/core/y;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/q$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    return-void
.end method
