.class public final Lcom/yelp/android/appdata/webrequests/as$c;
.super Lcom/yelp/android/appdata/webrequests/as;
.source "ComplimentActionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;",
            "Lcom/yelp/android/serializable/Compliment;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    const-string/jumbo v0, "compliment/send"

    invoke-direct {p0, p1, v0, p2}, Lcom/yelp/android/appdata/webrequests/as;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Lcom/yelp/android/serializable/Compliment;)V

    .line 73
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/as$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "text"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/as$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "name"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->k()Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment$ComplimentType;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/as$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->j()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->j()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->j()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/as$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/as$c;->a:Lcom/yelp/android/serializable/Compliment;

    .line 82
    return-void
.end method


# virtual methods
.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/webrequests/as;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Compliment;

    move-result-object v0

    return-object v0
.end method
