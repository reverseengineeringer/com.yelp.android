.class Lcom/yelp/android/ui/util/bg;
.super Ljava/lang/Object;
.source "MenuUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bg;->a:Ljava/lang/ref/WeakReference;

    .line 166
    iput-object p2, p0, Lcom/yelp/android/ui/util/bg;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 167
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/util/bg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/bg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/util/bg;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/util/r;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 175
    const/4 v0, 0x1

    goto :goto_0
.end method
