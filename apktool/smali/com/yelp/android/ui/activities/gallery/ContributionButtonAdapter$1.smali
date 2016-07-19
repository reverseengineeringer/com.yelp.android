.class Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$1;
.super Ljava/lang/Object;
.source "ContributionButtonAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

.field final synthetic b:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$1;->b:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$1;->a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$1;->b:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;->a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter;)Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$1;->a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;->a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V

    .line 91
    return-void
.end method
