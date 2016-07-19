.class public final enum Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;
.super Ljava/lang/Enum;
.source "ReviewHighlight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/ReviewHighlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReviewHighlightType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

.field public static final enum ATTRIBUTE:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

.field public static final enum MENU:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

.field public static final enum OLD:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

.field public static final enum PHRASE:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;


# instance fields
.field private final mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    const-string/jumbo v1, "MENU"

    const-string/jumbo v2, "menu"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->MENU:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 25
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    const-string/jumbo v1, "ATTRIBUTE"

    const-string/jumbo v2, "attribute"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->ATTRIBUTE:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 26
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    const-string/jumbo v1, "PHRASE"

    const-string/jumbo v2, "phrase"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->PHRASE:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 27
    new-instance v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    const-string/jumbo v1, "OLD"

    const-string/jumbo v2, "old"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->OLD:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    sget-object v1, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->MENU:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->ATTRIBUTE:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->PHRASE:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->OLD:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->$VALUES:[Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->mTypeString:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->$VALUES:[Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    return-object v0
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->mTypeString:Ljava/lang/String;

    return-object v0
.end method
