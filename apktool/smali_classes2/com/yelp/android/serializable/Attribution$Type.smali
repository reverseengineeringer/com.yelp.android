.class public final enum Lcom/yelp/android/serializable/Attribution$Type;
.super Ljava/lang/Enum;
.source "Attribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Attribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Attribution$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Attribution$Type;

.field public static final enum FOOTER:Lcom/yelp/android/serializable/Attribution$Type;

.field public static final enum NONE:Lcom/yelp/android/serializable/Attribution$Type;

.field public static final enum YP_ADS:Lcom/yelp/android/serializable/Attribution$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/yelp/android/serializable/Attribution$Type;

    const-string/jumbo v1, "FOOTER"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Attribution$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Attribution$Type;->FOOTER:Lcom/yelp/android/serializable/Attribution$Type;

    .line 14
    new-instance v0, Lcom/yelp/android/serializable/Attribution$Type;

    const-string/jumbo v1, "YP_ADS"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/Attribution$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Attribution$Type;->YP_ADS:Lcom/yelp/android/serializable/Attribution$Type;

    .line 15
    new-instance v0, Lcom/yelp/android/serializable/Attribution$Type;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/serializable/Attribution$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/serializable/Attribution$Type;->NONE:Lcom/yelp/android/serializable/Attribution$Type;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/Attribution$Type;

    sget-object v1, Lcom/yelp/android/serializable/Attribution$Type;->FOOTER:Lcom/yelp/android/serializable/Attribution$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/serializable/Attribution$Type;->YP_ADS:Lcom/yelp/android/serializable/Attribution$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Attribution$Type;->NONE:Lcom/yelp/android/serializable/Attribution$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/serializable/Attribution$Type;->$VALUES:[Lcom/yelp/android/serializable/Attribution$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lcom/yelp/android/serializable/Attribution$Type;
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "footer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/yelp/android/serializable/Attribution$Type;->FOOTER:Lcom/yelp/android/serializable/Attribution$Type;

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string/jumbo v0, "yp_ads"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/yelp/android/serializable/Attribution$Type;->YP_ADS:Lcom/yelp/android/serializable/Attribution$Type;

    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/Attribution$Type;->NONE:Lcom/yelp/android/serializable/Attribution$Type;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Attribution$Type;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/yelp/android/serializable/Attribution$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Attribution$Type;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Attribution$Type;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/serializable/Attribution$Type;->$VALUES:[Lcom/yelp/android/serializable/Attribution$Type;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Attribution$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Attribution$Type;

    return-object v0
.end method
