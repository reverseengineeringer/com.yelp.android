.class public final enum Lcom/yelp/android/ui/panels/YelpLoadingSpinner;
.super Ljava/lang/Enum;
.source "YelpLoadingSpinner.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/panels/YelpLoadingSpinner;",
        ">;",
        "Lcom/yelp/android/ui/panels/c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

.field public static final enum FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;


# instance fields
.field private mFrames:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    const-string/jumbo v1, "FINDING_PLACES"

    const/16 v2, 0x17

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    sget-object v1, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->FINDING_PLACES:Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->$VALUES:[Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    return-void

    .line 9
    :array_0
    .array-data 4
        0x7f020272
        0x7f020273
        0x7f020274
        0x7f020275
        0x7f020276
        0x7f020277
        0x7f020278
        0x7f020279
        0x7f02027a
        0x7f02027b
        0x7f02027c
        0x7f02027d
        0x7f02027e
        0x7f02027f
        0x7f020280
        0x7f020281
        0x7f020282
        0x7f020283
        0x7f020284
        0x7f020285
        0x7f020286
        0x7f020287
        0x7f020288
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->mFrames:[I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/panels/YelpLoadingSpinner;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/panels/YelpLoadingSpinner;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->$VALUES:[Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/panels/YelpLoadingSpinner;

    return-object v0
.end method


# virtual methods
.method public getFrames()[I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/panels/YelpLoadingSpinner;->mFrames:[I

    return-object v0
.end method
