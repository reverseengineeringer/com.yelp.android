.class Lcom/yelp/android/ui/activities/gallery/h;
.super Ljava/lang/Object;
.source "ContributionButtonAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

.field final synthetic b:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/h;->b:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/h;->a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/h;->b:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;)Lcom/yelp/android/ui/activities/gallery/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/h;->a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/gallery/i;->a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V

    .line 88
    return-void
.end method
