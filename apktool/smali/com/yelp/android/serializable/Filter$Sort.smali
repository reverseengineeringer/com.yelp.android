.class public final enum Lcom/yelp/android/serializable/Filter$Sort;
.super Ljava/lang/Enum;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Filter$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Filter$Sort;

.field public static final enum Default:Lcom/yelp/android/serializable/Filter$Sort;

.field public static final enum Distance:Lcom/yelp/android/serializable/Filter$Sort;

.field public static final enum Rating:Lcom/yelp/android/serializable/Filter$Sort;


# instance fields
.field private final res:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    new-instance v0, Lcom/yelp/android/serializable/Filter$Sort;

    const-string/jumbo v1, "Default"

    const v2, 0x7f070328

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/serializable/Filter$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    .line 247
    new-instance v0, Lcom/yelp/android/serializable/Filter$Sort;

    const-string/jumbo v1, "Distance"

    const v2, 0x7f070329

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/serializable/Filter$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/Filter$Sort;->Distance:Lcom/yelp/android/serializable/Filter$Sort;

    .line 248
    new-instance v0, Lcom/yelp/android/serializable/Filter$Sort;

    const-string/jumbo v1, "Rating"

    const v2, 0x7f07032b

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/serializable/Filter$Sort;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yelp/android/serializable/Filter$Sort;->Rating:Lcom/yelp/android/serializable/Filter$Sort;

    .line 245
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/Filter$Sort;

    sget-object v1, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/serializable/Filter$Sort;->Distance:Lcom/yelp/android/serializable/Filter$Sort;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/Filter$Sort;->Rating:Lcom/yelp/android/serializable/Filter$Sort;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/serializable/Filter$Sort;->$VALUES:[Lcom/yelp/android/serializable/Filter$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 253
    iput p3, p0, Lcom/yelp/android/serializable/Filter$Sort;->res:I

    .line 254
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Filter$Sort;
    .locals 1

    .prologue
    .line 245
    const-class v0, Lcom/yelp/android/serializable/Filter$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Filter$Sort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Filter$Sort;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/yelp/android/serializable/Filter$Sort;->$VALUES:[Lcom/yelp/android/serializable/Filter$Sort;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Filter$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Filter$Sort;

    return-object v0
.end method


# virtual methods
.method public getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/yelp/android/serializable/Filter$Sort;->res:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
