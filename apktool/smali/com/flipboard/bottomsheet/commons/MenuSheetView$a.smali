.class Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;
.super Landroid/widget/BaseAdapter;
.source "MenuSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/MenuSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->a:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 263
    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->b:Landroid/view/LayoutInflater;

    .line 264
    return-void
.end method


# virtual methods
.method public a(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->a:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->a(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->a:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->a(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->a(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 278
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->a(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const/4 v0, 0x2

    .line 294
    :goto_0
    return v0

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->a(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;

    move-result-object v2

    .line 302
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->getItemViewType(I)I

    move-result v0

    .line 304
    packed-switch v0, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-object p2

    .line 307
    :pswitch_0
    if-nez p2, :cond_2

    .line 308
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->a:Lcom/flipboard/bottomsheet/commons/MenuSheetView;

    invoke-static {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView;->b(Lcom/flipboard/bottomsheet/commons/MenuSheetView;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    move-result-object v0

    sget-object v3, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    if-ne v0, v3, :cond_1

    sget v0, Lcom/yelp/android/cq/a$d;->sheet_grid_item:I

    :goto_1
    invoke-virtual {v1, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 309
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;

    invoke-direct {v0, p0, p2}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;-><init>(Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;Landroid/view/View;)V

    .line 310
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 314
    :goto_2
    invoke-virtual {v0, v2}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;->a(Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;)V

    goto :goto_0

    .line 308
    :cond_1
    sget v0, Lcom/yelp/android/cq/a$d;->sheet_list_item:I

    goto :goto_1

    .line 312
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a$a;

    goto :goto_2

    .line 317
    :pswitch_1
    if-nez p2, :cond_3

    .line 318
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/yelp/android/cq/a$d;->sheet_list_item_subheader:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_3
    move-object v0, v1

    .line 320
    check-cast v0, Landroid/widget/TextView;

    .line 321
    invoke-virtual {v2}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->b()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object p2, v1

    .line 322
    goto :goto_0

    .line 324
    :pswitch_2
    if-nez p2, :cond_0

    .line 325
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/yelp/android/cq/a$d;->sheet_list_item_separator:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object v1, p2

    goto :goto_3

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$a;->a(I)Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$b;->c()Z

    move-result v0

    return v0
.end method
