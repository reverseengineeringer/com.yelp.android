.class Lcom/yelp/android/ui/dialogs/a$1;
.super Ljava/lang/Object;
.source "DeliveryReservationFilterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/a;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;Landroid/view/View;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/List;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

.field final synthetic b:Landroid/widget/ToggleButton;

.field final synthetic c:Lcom/yelp/android/analytics/iris/EventIri;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/yelp/android/analytics/iris/EventIri;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Lcom/yelp/android/ui/dialogs/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/a;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;Lcom/yelp/android/analytics/iris/EventIri;Landroid/view/View;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/a$1;->g:Lcom/yelp/android/ui/dialogs/a;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/a$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/a$1;->b:Landroid/widget/ToggleButton;

    iput-object p4, p0, Lcom/yelp/android/ui/dialogs/a$1;->c:Lcom/yelp/android/analytics/iris/EventIri;

    iput-object p5, p0, Lcom/yelp/android/ui/dialogs/a$1;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/yelp/android/ui/dialogs/a$1;->e:Lcom/yelp/android/analytics/iris/EventIri;

    iput-object p7, p0, Lcom/yelp/android/ui/dialogs/a$1;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/a$1;->g:Lcom/yelp/android/ui/dialogs/a;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/a;->a(Lcom/yelp/android/ui/dialogs/a;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v2

    .line 198
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/a$1;->b:Landroid/widget/ToggleButton;

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->g:Lcom/yelp/android/ui/dialogs/a;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/a;->a(Lcom/yelp/android/ui/dialogs/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/a$1;->a:Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yelp/android/util/d;->a(Ljava/util/Set;Ljava/lang/Object;)V

    .line 200
    if-eqz v2, :cond_3

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->c:Lcom/yelp/android/analytics/iris/EventIri;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->c:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 198
    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->e:Lcom/yelp/android/analytics/iris/EventIri;

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->e:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 216
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eq v0, p1, :cond_5

    .line 217
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->performClick()Z

    goto :goto_2

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/a$1;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
