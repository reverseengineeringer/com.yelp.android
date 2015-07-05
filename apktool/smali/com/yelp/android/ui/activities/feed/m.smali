.class Lcom/yelp/android/ui/activities/feed/m;
.super Ljava/lang/Object;
.source "CheckInMeFeedViewBinder.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/j;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/n;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/k;Lcom/yelp/android/ui/activities/feed/n;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/m;->b:Lcom/yelp/android/ui/activities/feed/k;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/m;->a:Lcom/yelp/android/ui/activities/feed/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CheckableView:",
            "Landroid/view/View;",
            ":",
            "Landroid/widget/Checkable;",
            ">(TCheckableView;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/m;->a:Lcom/yelp/android/ui/activities/feed/n;

    const v0, 0x7f0c002f

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v0, 0x7f0c0026

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CheckInFeedEntry;

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/feed/n;->a(ILcom/yelp/android/serializable/CheckInFeedEntry;Z)V

    .line 51
    return-void
.end method
