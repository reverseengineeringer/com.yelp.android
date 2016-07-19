.class Lcom/yelp/android/ui/dialogs/c$a$1;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/c$a;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/c$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/c$a;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->b:Lcom/yelp/android/ui/dialogs/c$a;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->b:Lcom/yelp/android/ui/dialogs/c$a;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/c$a;->d:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/c;->c(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/d;->a(Ljava/util/Set;Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->b:Lcom/yelp/android/ui/dialogs/c$a;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/c$a;->b:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->b:Lcom/yelp/android/ui/dialogs/c$a;

    iget-object v2, v2, Lcom/yelp/android/ui/dialogs/c$a;->d:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/c;->c(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OnlineMessageThisBusiness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$a$1;->b:Lcom/yelp/android/ui/dialogs/c$a;

    iget-object v1, v1, Lcom/yelp/android/ui/dialogs/c$a;->d:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/c;->c(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchFilterRequestAQuoteOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 258
    :cond_0
    return-void
.end method
