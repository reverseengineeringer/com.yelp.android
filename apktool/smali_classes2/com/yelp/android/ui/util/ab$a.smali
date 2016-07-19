.class Lcom/yelp/android/ui/util/ab$a;
.super Ljava/lang/Object;
.source "MenuUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


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
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ab$a;->a:Ljava/lang/ref/WeakReference;

    .line 186
    iput-object p2, p0, Lcom/yelp/android/ui/util/ab$a;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 187
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 192
    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/ab$a;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/util/k;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 196
    const/4 v0, 0x1

    goto :goto_0
.end method
