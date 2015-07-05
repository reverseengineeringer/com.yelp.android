.class Lcom/yelp/android/ui/activities/search/am;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/am;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/am;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/am;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 222
    return-void
.end method
