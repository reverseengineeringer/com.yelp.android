.class public Lcom/yelp/android/appdata/webrequests/bh;
.super Lcom/yelp/android/av/g;
.source "DealPurchaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDealOption;Ljava/util/ArrayList;Lcom/yelp/android/serializable/PaymentMethod;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/serializable/YelpDeal;",
            "Lcom/yelp/android/serializable/YelpDealOption;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/serializable/GiftRecipient;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/deal/purchase"

    invoke-direct {p0, v0, v1, p8}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 59
    const-string/jumbo v0, "deal_option_id"

    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpDealOption;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "quantity"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;I)V

    .line 61
    const-string/jumbo v0, "purchase_nonce"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz p3, :cond_0

    .line 63
    const-string/jumbo v0, "business_id"

    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p4}, Lcom/yelp/android/serializable/YelpDeal;->getTimeUpdated()Ljava/util/Date;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v1, "deal_time_updated"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;J)V

    .line 69
    :cond_1
    invoke-virtual {p7}, Lcom/yelp/android/serializable/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    const-string/jumbo v1, "payment_method_id"

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_5

    .line 76
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 77
    const-string/jumbo v1, "gift_recipient_%s_name"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/GiftRecipient;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "gift_recipient_%s_from"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/GiftRecipient;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/GiftRecipient;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 82
    const-string/jumbo v1, "gift_recipient_%s_email"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/GiftRecipient;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/GiftRecipient;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 86
    const-string/jumbo v1, "gift_recipient_%s_message"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/GiftRecipient;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_4
    const-string/jumbo v1, "gift_recipient_%s_quantity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/appdata/webrequests/bh;->addPostParam(Ljava/lang/String;I)V

    .line 73
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 92
    :cond_5
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 98
    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/bh;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method
