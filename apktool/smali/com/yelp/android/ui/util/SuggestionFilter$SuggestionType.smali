.class public final enum Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;
.super Ljava/lang/Enum;
.source "SuggestionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/SuggestionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuggestionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

.field public static final enum BOOKMARK:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

.field public static final enum CONTRIBUTION:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

.field public static final enum SEARCH:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 524
    new-instance v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    const-string/jumbo v1, "CONTRIBUTION"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->CONTRIBUTION:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    .line 525
    new-instance v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    const-string/jumbo v1, "SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->SEARCH:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    .line 526
    new-instance v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    const-string/jumbo v1, "BOOKMARK"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->BOOKMARK:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    .line 523
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    sget-object v1, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->CONTRIBUTION:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->SEARCH:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->BOOKMARK:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->$VALUES:[Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

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
    .line 523
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;
    .locals 1

    .prologue
    .line 523
    const-class v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->$VALUES:[Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    return-object v0
.end method
