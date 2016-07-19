.class public Lcom/yelp/android/serializable/ConversationMessage;
.super Lcom/yelp/android/serializable/_ConversationMessage;
.source "ConversationMessage.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/serializable/ConversationMessage$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ConversationMessage$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ConversationMessage;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ConversationMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/e;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/serializable/ConversationMessage;->e:Lcom/yelp/android/serializable/UserTiny;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/ConversationMessage;->e:Lcom/yelp/android/serializable/UserTiny;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/ConversationMessage;->a:Lcom/yelp/android/serializable/BusinessUser;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Lcom/yelp/android/serializable/ConversationMessage;->a:Lcom/yelp/android/serializable/BusinessUser;

    if-eqz v0, :cond_0

    .line 35
    const v0, 0x7f0706cc

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->a:Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessUser;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->a:Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessUser;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->d:Ljava/lang/String;

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0703c0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->e:Lcom/yelp/android/serializable/UserTiny;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/UserTiny;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->d:Ljava/lang/String;

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ConversationMessage;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ConversationMessage;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/Date;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->d()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Lcom/yelp/android/serializable/BusinessUser;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->e()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 21
    instance-of v0, p1, Lcom/yelp/android/serializable/ConversationMessage;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lcom/yelp/android/serializable/ConversationMessage;

    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ConversationMessage;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ConversationMessage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ConversationMessage;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ConversationMessage;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
