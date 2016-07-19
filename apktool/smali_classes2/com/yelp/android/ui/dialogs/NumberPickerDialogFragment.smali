.class public Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "NumberPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a:I

    return p1
.end method

.method public static a(IIII)Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;-><init>()V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string/jumbo v2, "picker_value"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string/jumbo v2, "min_picker_value"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v2, "max_picker_value"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-string/jumbo v2, "value_string"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->b:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;)Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->e:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->e:Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "min_picker_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->b:I

    .line 57
    const-string/jumbo v1, "max_picker_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->c:I

    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string/jumbo v1, "picker_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a:I

    .line 60
    const-string/jumbo v1, "value_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->d:I

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v0, "saved_picker_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a:I

    .line 63
    const-string/jumbo v0, "saved_value_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->d:I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 76
    const v0, 0x7f0f03b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 78
    iget v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 79
    iget v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 80
    iget v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->b:I

    :goto_0
    iget v4, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->c:I

    if-gt v1, v4, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->d:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    new-array v1, v8, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v8}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->e()Landroid/support/v7/app/d$a;

    move-result-object v1

    .line 90
    const v4, 0x7f07054c

    invoke-virtual {v1, v4}, Landroid/support/v7/app/d$a;->a(I)Landroid/support/v7/app/d$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v7/app/d$a;->b(Landroid/view/View;)Landroid/support/v7/app/d$a;

    move-result-object v2

    const v4, 0x7f070266

    new-instance v5, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;

    invoke-direct {v5, p0, v0, v3}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$1;-><init>(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;Landroid/widget/NumberPicker;Ljava/util/List;)V

    invoke-virtual {v2, v4, v5}, Landroid/support/v7/app/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 107
    invoke-virtual {v1}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    const-string/jumbo v0, "saved_picker_value"

    iget v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string/jumbo v0, "saved_value_string"

    iget v1, p0, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    return-void
.end method
