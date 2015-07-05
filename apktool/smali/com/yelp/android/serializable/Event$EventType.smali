.class public final enum Lcom/yelp/android/serializable/Event$EventType;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Event$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Event$EventType;

.field public static final enum ELITE:Lcom/yelp/android/serializable/Event$EventType;

.field public static final enum REGULAR:Lcom/yelp/android/serializable/Event$EventType;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/yelp/android/serializable/Event$EventType;

    const-string/jumbo v1, "REGULAR"

    const-string/jumbo v2, "regular"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/Event$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Event$EventType;->REGULAR:Lcom/yelp/android/serializable/Event$EventType;

    .line 79
    new-instance v0, Lcom/yelp/android/serializable/Event$EventType;

    const-string/jumbo v1, "ELITE"

    const-string/jumbo v2, "elite"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/Event$EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/serializable/Event$EventType;

    sget-object v1, Lcom/yelp/android/serializable/Event$EventType;->REGULAR:Lcom/yelp/android/serializable/Event$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/serializable/Event$EventType;->$VALUES:[Lcom/yelp/android/serializable/Event$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p3, p0, Lcom/yelp/android/serializable/Event$EventType;->mType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static getEventType(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$EventType;
    .locals 5

    .prologue
    .line 88
    invoke-static {}, Lcom/yelp/android/serializable/Event$EventType;->values()[Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 89
    iget-object v4, v0, Lcom/yelp/android/serializable/Event$EventType;->mType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    :goto_1
    return-object v0

    .line 88
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/Event$EventType;->REGULAR:Lcom/yelp/android/serializable/Event$EventType;

    goto :goto_1
.end method

.method public static getEventTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/serializable/Event$EventType;
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string/jumbo v2, "yelp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 120
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event$EventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/yelp/android/serializable/Event$EventType;->ELITE:Lcom/yelp/android/serializable/Event$EventType;

    .line 123
    :goto_1
    return-object v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/Event$EventType;->REGULAR:Lcom/yelp/android/serializable/Event$EventType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$EventType;
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/yelp/android/serializable/Event$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$EventType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Event$EventType;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/yelp/android/serializable/Event$EventType;->$VALUES:[Lcom/yelp/android/serializable/Event$EventType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Event$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Event$EventType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/serializable/Event$EventType;->mType:Ljava/lang/String;

    return-object v0
.end method
