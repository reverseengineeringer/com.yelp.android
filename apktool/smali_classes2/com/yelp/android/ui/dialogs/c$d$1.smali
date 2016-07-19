.class Lcom/yelp/android/ui/dialogs/c$d$1;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/c$d;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

.field final synthetic b:Lcom/yelp/android/ui/dialogs/c$d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/c$d;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 295
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    iget-object v3, v3, Lcom/yelp/android/ui/dialogs/c$d;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/c;->c(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v2

    .line 297
    if-eqz v2, :cond_1

    .line 298
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/c$d;->a(Lcom/yelp/android/ui/dialogs/c$d;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    iget-object v3, v3, Lcom/yelp/android/ui/dialogs/c$d;->c:Landroid/widget/TextView;

    const v4, 0x7f0702ca

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 307
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    iget-object v3, v3, Lcom/yelp/android/ui/dialogs/c$d;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/c;->c(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/yelp/android/util/d;->a(Ljava/util/Set;Ljava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    iget-object v1, v1, Lcom/yelp/android/ui/dialogs/c$d;->b:Landroid/widget/ToggleButton;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 309
    return-void

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/c$d;->a(Lcom/yelp/android/ui/dialogs/c$d;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    invoke-virtual {v3}, Lcom/yelp/android/ui/dialogs/c$d;->a()V

    .line 304
    :cond_2
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    iget-object v4, v4, Lcom/yelp/android/ui/dialogs/c$d;->e:Lcom/yelp/android/ui/dialogs/c;

    invoke-static {v4}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yelp/android/ui/dialogs/c$d;->b(Lcom/yelp/android/ui/dialogs/c$d;Ljava/util/Calendar;)V

    .line 305
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/c$d$1;->b:Lcom/yelp/android/ui/dialogs/c$d;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/c$d;->a(Lcom/yelp/android/ui/dialogs/c$d;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
