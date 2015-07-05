.class Lcom/yelp/android/util/am;
.super Ljava/lang/Object;
.source "YelpLogDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/util/YelpLogDelegate;


# direct methods
.method constructor <init>(Lcom/yelp/android/util/YelpLogDelegate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yelp/android/util/am;->b:Lcom/yelp/android/util/YelpLogDelegate;

    iput-object p2, p0, Lcom/yelp/android/util/am;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/debug/Debug;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/yelp/android/util/am;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 46
    :cond_0
    return-void
.end method
