.class Lcom/yelp/android/ui/util/d;
.super Ljava/lang/Object;
.source "AndroidListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/AndroidListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/AndroidListFragment;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/util/d;->a:Lcom/yelp/android/ui/util/AndroidListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/util/d;->a:Lcom/yelp/android/ui/util/AndroidListFragment;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 172
    return-void
.end method
