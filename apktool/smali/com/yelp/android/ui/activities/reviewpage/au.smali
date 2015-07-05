.class Lcom/yelp/android/ui/activities/reviewpage/au;
.super Landroid/database/DataSetObserver;
.source "ReviewFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/au;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/au;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    .line 453
    return-void
.end method
