.class public Landroid/support/design/internal/NavigationMenuItemView;
.super Landroid/widget/TextView;
.source "NavigationMenuItemView.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/m$a;


# static fields
.field private static final a:[I


# instance fields
.field private b:I

.field private c:Landroid/support/v7/internal/view/menu/h;

.field private d:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/a/a$d;->design_navigation_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->b:I

    .line 57
    return-void
.end method

.method private b()Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .prologue
    .line 77
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 78
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Lcom/yelp/android/a/a$b;->colorControlHighlight:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 80
    sget-object v2, Landroid/support/design/internal/NavigationMenuItemView;->a:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 81
    sget-object v1, Landroid/support/design/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/h;I)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->c:Landroid/support/v7/internal/view/menu/h;

    .line 63
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/h;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuItemView;->b()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/h;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setCheckable(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/h;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setChecked(Z)V

    .line 71
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/h;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setEnabled(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/h;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-void

    .line 63
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getItemData()Landroid/support/v7/internal/view/menu/h;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->c:Landroid/support/v7/internal/view/menu/h;

    return-object v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 133
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 134
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->c:Landroid/support/v7/internal/view/menu/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->c:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/h;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->c:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/h;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Landroid/support/design/internal/NavigationMenuItemView;->a:[I

    invoke-static {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    .line 137
    :cond_0
    return-object v0
.end method

.method public setCheckable(Z)V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 100
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuItemView;->refreshDrawableState()V

    .line 105
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/d/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 115
    iget v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->b:I

    iget v1, p0, Landroid/support/design/internal/NavigationMenuItemView;->b:I

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->d:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 118
    :cond_0
    invoke-static {p0, p1, v2, v2, v2}, Landroid/support/v4/widget/y;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void
.end method

.method setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->d:Landroid/content/res/ColorStateList;

    .line 142
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->c:Landroid/support/v7/internal/view/menu/h;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->c:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
