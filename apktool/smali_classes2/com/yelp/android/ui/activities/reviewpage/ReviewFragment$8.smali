.class Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$8;
.super Landroid/database/DataSetObserver;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$8;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$8;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    .line 523
    return-void
.end method
