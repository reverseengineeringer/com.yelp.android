.class Lcom/yelp/android/ui/activities/bb;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bb;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 270
    invoke-static {}, Lcom/yelp/android/util/Holiday;->values()[Lcom/yelp/android/util/Holiday;

    move-result-object v0

    .line 271
    array-length v1, v0

    if-lt p2, v1, :cond_0

    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/util/Holiday;->mForcedHoliday:Lcom/yelp/android/util/Holiday;

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    aget-object v0, v0, p2

    sput-object v0, Lcom/yelp/android/util/Holiday;->mForcedHoliday:Lcom/yelp/android/util/Holiday;

    goto :goto_0
.end method
