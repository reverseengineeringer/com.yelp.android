.class final enum Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;
.super Ljava/lang/Enum;
.source "ReviewPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/ReviewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AdapterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

.field public static final enum DEFAULT:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

.field public static final enum LOADING:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

.field public static final enum LOADING_BACKWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

.field public static final enum LOADING_FORWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->DEFAULT:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    .line 127
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    .line 128
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    const-string/jumbo v1, "LOADING_BACKWARDS"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_BACKWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    .line 129
    new-instance v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    const-string/jumbo v1, "LOADING_FORWARDS"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_FORWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    sget-object v1, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->DEFAULT:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_BACKWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->LOADING_FORWARDS:Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->$VALUES:[Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->$VALUES:[Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/widgets/ReviewPagerFragment$AdapterState;

    return-object v0
.end method
