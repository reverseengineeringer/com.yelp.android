.class public Lcom/adjust/sdk/plugin/AdjustCriteo;
.super Ljava/lang/Object;
.source "AdjustCriteo.java"


# static fields
.field private static MAX_VIEW_LISTING_PRODUCTS:I

.field private static checkInDateInternal:Ljava/lang/String;

.field private static checkOutDateInternal:Ljava/lang/String;

.field private static hashEmailInternal:Ljava/lang/String;

.field private static logger:Lcom/adjust/sdk/ILogger;

.field private static partnerIdInternal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->logger:Lcom/adjust/sdk/ILogger;

    .line 20
    const/4 v0, 0x3

    sput v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->MAX_VIEW_LISTING_PRODUCTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCriteoVBFromProducts(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/plugin/CriteoProduct;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 186
    if-nez p0, :cond_0

    .line 187
    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Criteo Event product list is empty. It will sent as empty."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "["

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 192
    :goto_0
    if-ge v1, v4, :cond_1

    .line 193
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/plugin/CriteoProduct;

    .line 194
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "{\"i\":\"%s\",\"pr\":%f,\"q\":%d}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/adjust/sdk/plugin/CriteoProduct;->productID:Ljava/lang/String;

    aput-object v8, v7, v2

    iget v8, v0, Lcom/adjust/sdk/plugin/CriteoProduct;->price:F

    .line 196
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x2

    iget v0, v0, Lcom/adjust/sdk/plugin/CriteoProduct;->quantity:I

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    .line 194
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    add-int/lit8 v0, v1, 0x1

    .line 202
    if-ne v0, v4, :cond_2

    .line 208
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const/4 v0, 0x0

    .line 211
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    :goto_1
    return-object v0

    .line 206
    :cond_2
    const-string/jumbo v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .line 207
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    sget-object v3, Lcom/adjust/sdk/plugin/AdjustCriteo;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v4, "error converting criteo products (%s)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static createCriteoVLFromProducts(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 152
    if-nez p0, :cond_0

    .line 153
    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Criteo View Listing product ids list is null. It will sent as empty."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "["

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 159
    sget v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->MAX_VIEW_LISTING_PRODUCTS:I

    if-le v4, v0, :cond_1

    .line 160
    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v1, "Criteo View Listing should only have at most 3 product ids. The rest will be discarded."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v5}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v2

    .line 162
    :goto_0
    if-ge v1, v4, :cond_2

    .line 163
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "\"%s\""

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    add-int/lit8 v0, v1, 0x1

    .line 169
    if-eq v0, v4, :cond_2

    sget v1, Lcom/adjust/sdk/plugin/AdjustCriteo;->MAX_VIEW_LISTING_PRODUCTS:I

    if-lt v0, v1, :cond_3

    .line 175
    :cond_2
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_1
    return-object v0

    .line 173
    :cond_3
    const-string/jumbo v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v0

    .line 174
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    sget-object v3, Lcom/adjust/sdk/plugin/AdjustCriteo;->logger:Lcom/adjust/sdk/ILogger;

    const-string/jumbo v4, "error converting criteo product ids (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static injectAchievementUnlockedIntoEvent(Lcom/adjust/sdk/AdjustEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "customer_id"

    invoke-virtual {p0, v0, p2}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "ui_achievmnt"

    invoke-virtual {p0, v0, p1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 79
    return-void
.end method

.method public static injectCartIntoEvent(Lcom/adjust/sdk/AdjustEvent;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adjust/sdk/AdjustEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/plugin/CriteoProduct;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lcom/adjust/sdk/plugin/AdjustCriteo;->createCriteoVBFromProducts(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "customer_id"

    invoke-virtual {p0, v1, p2}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "criteo_p"

    invoke-virtual {p0, v1, v0}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 48
    return-void
.end method

.method public static injectCustomEvent2IntoEvent(Lcom/adjust/sdk/AdjustEvent;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v0, "customer_id"

    invoke-virtual {p0, v0, p4}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "ui_data2"

    invoke-virtual {p0, v0, p1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "ui_data3"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 94
    return-void
.end method

.method public static injectCustomEventIntoEvent(Lcom/adjust/sdk/AdjustEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "customer_id"

    invoke-virtual {p0, v0, p2}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "ui_data"

    invoke-virtual {p0, v0, p1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 86
    return-void
.end method

.method public static injectDeeplinkIntoEvent(Lcom/adjust/sdk/AdjustEvent;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string/jumbo v0, "criteo_deeplink"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0
.end method

.method private static injectHashEmail(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->hashEmailInternal:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->hashEmailInternal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string/jumbo v0, "criteo_email_hash"

    sget-object v1, Lcom/adjust/sdk/plugin/AdjustCriteo;->hashEmailInternal:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static injectHashedEmailIntoCriteoEvents(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    sput-object p0, Lcom/adjust/sdk/plugin/AdjustCriteo;->hashEmailInternal:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private static injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 0

    .prologue
    .line 120
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectHashEmail(Lcom/adjust/sdk/AdjustEvent;)V

    .line 121
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectSearchDates(Lcom/adjust/sdk/AdjustEvent;)V

    .line 122
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectPartnerId(Lcom/adjust/sdk/AdjustEvent;)V

    .line 123
    return-void
.end method

.method private static injectPartnerId(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->partnerIdInternal:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->partnerIdInternal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string/jumbo v0, "criteo_partner_id"

    sget-object v1, Lcom/adjust/sdk/plugin/AdjustCriteo;->partnerIdInternal:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static injectPartnerIdIntoCriteoEvents(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    sput-object p0, Lcom/adjust/sdk/plugin/AdjustCriteo;->partnerIdInternal:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private static injectSearchDates(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->checkInDateInternal:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->checkInDateInternal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->checkOutDateInternal:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/plugin/AdjustCriteo;->checkOutDateInternal:Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string/jumbo v0, "din"

    sget-object v1, Lcom/adjust/sdk/plugin/AdjustCriteo;->checkInDateInternal:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "dout"

    sget-object v1, Lcom/adjust/sdk/plugin/AdjustCriteo;->checkOutDateInternal:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static injectTransactionConfirmedIntoEvent(Lcom/adjust/sdk/AdjustEvent;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adjust/sdk/AdjustEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/plugin/CriteoProduct;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Lcom/adjust/sdk/plugin/AdjustCriteo;->createCriteoVBFromProducts(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "customer_id"

    invoke-virtual {p0, v1, p3}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "transaction_id"

    invoke-virtual {p0, v1, p2}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "criteo_p"

    invoke-virtual {p0, v1, v0}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 58
    return-void
.end method

.method public static injectUserLevelIntoEvent(Lcom/adjust/sdk/AdjustEvent;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    const-string/jumbo v0, "customer_id"

    invoke-virtual {p0, v0, p3}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "ui_level"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 65
    return-void
.end method

.method public static injectUserStatusIntoEvent(Lcom/adjust/sdk/AdjustEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "customer_id"

    invoke-virtual {p0, v0, p2}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "ui_status"

    invoke-virtual {p0, v0, p1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 72
    return-void
.end method

.method public static injectViewListingIntoEvent(Lcom/adjust/sdk/AdjustEvent;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adjust/sdk/AdjustEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lcom/adjust/sdk/plugin/AdjustCriteo;->createCriteoVLFromProducts(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string/jumbo v1, "customer_id"

    invoke-virtual {p0, v1, p2}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v1, "criteo_p"

    invoke-virtual {p0, v1, v0}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 32
    return-void
.end method

.method public static injectViewProductIntoEvent(Lcom/adjust/sdk/AdjustEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "customer_id"

    invoke-virtual {p0, v0, p2}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "criteo_p"

    invoke-virtual {p0, v0, p1}, Lcom/adjust/sdk/AdjustEvent;->addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectOptionalParams(Lcom/adjust/sdk/AdjustEvent;)V

    .line 39
    return-void
.end method

.method public static injectViewSearchDatesIntoCriteoEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    sput-object p0, Lcom/adjust/sdk/plugin/AdjustCriteo;->checkInDateInternal:Ljava/lang/String;

    .line 102
    sput-object p1, Lcom/adjust/sdk/plugin/AdjustCriteo;->checkOutDateInternal:Ljava/lang/String;

    .line 103
    return-void
.end method
