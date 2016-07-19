.class Lcom/yelp/android/ui/activities/reviewpage/e$1;
.super Ljava/lang/Object;
.source "TranslatableReviewAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/e;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/e$1;->a:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e$1;->a:Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->notifyDataSetChanged()V

    .line 242
    return-void
.end method
