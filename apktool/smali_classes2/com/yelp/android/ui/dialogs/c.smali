.class public Lcom/yelp/android/ui/dialogs/c;
.super Lcom/yelp/android/ui/util/w;
.source "FiltersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/c$c;,
        Lcom/yelp/android/ui/dialogs/c$b;,
        Lcom/yelp/android/ui/dialogs/c$d;,
        Lcom/yelp/android/ui/dialogs/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Calendar;

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/support/v4/app/l;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/l;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->a:Ljava/util/HashSet;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->c:Ljava/lang/Boolean;

    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c;->d:Landroid/support/v4/app/l;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/dialogs/c$d;)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->c:Ljava/lang/Boolean;

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lcom/yelp/android/ui/dialogs/c$d;->b(Lcom/yelp/android/ui/dialogs/c$d;Ljava/util/Calendar;)V

    .line 225
    return-void
.end method

.method private a(Lcom/yelp/android/ui/dialogs/c$d;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    .line 165
    invoke-virtual {v0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    .line 167
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->g()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 170
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/dialogs/c$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/dialogs/c$1;-><init>(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V

    invoke-static {p1, v0}, Lcom/yelp/android/ui/dialogs/c$d;->a(Lcom/yelp/android/ui/dialogs/c$d;Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v0, Lcom/yelp/android/ui/dialogs/c$2;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/dialogs/c$2;-><init>(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V

    invoke-static {p1, v0}, Lcom/yelp/android/ui/dialogs/c$d;->b(Lcom/yelp/android/ui/dialogs/c$d;Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->a:Ljava/util/HashSet;

    invoke-static {p2, v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/c$d;->a()V

    .line 215
    iget-object v0, p1, Lcom/yelp/android/ui/dialogs/c$d;->b:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 216
    invoke-static {p1}, Lcom/yelp/android/ui/dialogs/c$d;->a(Lcom/yelp/android/ui/dialogs/c$d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lcom/yelp/android/ui/dialogs/c$d;->a(Lcom/yelp/android/ui/dialogs/c$d;Ljava/util/Calendar;)V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lcom/yelp/android/ui/dialogs/c$d;->b(Lcom/yelp/android/ui/dialogs/c$d;Ljava/util/Calendar;)V

    .line 220
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c$d;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/c;)Landroid/support/v4/app/l;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->d:Landroid/support/v4/app/l;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/c;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->a:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->c:Ljava/lang/Boolean;

    .line 152
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    .line 154
    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/c;->a:Ljava/util/HashSet;

    .line 143
    return-void
.end method

.method public b()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public c()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/c;->b:Ljava/util/Calendar;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/dialogs/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->OpenNow:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const v3, 0x7f0f00ec

    .line 84
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    const v1, 0x7f0300c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/dialogs/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/dialogs/c;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 92
    new-instance v2, Lcom/yelp/android/ui/dialogs/c$d;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/dialogs/c$d;-><init>(Lcom/yelp/android/ui/dialogs/c;Landroid/view/View;)V

    .line 94
    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/dialogs/c;->a(Lcom/yelp/android/ui/dialogs/c$d;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V

    .line 96
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c;->d:Landroid/support/v4/app/l;

    const-string/jumbo v3, "DatePickerDialogFragment"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;

    .line 100
    if-eqz v1, :cond_2

    .line 101
    new-instance v3, Lcom/yelp/android/ui/dialogs/c$b;

    invoke-direct {v3, p0, v2}, Lcom/yelp/android/ui/dialogs/c$b;-><init>(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;)V

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/c;->d:Landroid/support/v4/app/l;

    const-string/jumbo v3, "TimePickerDialogFragment"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;

    .line 107
    if-eqz v1, :cond_3

    .line 108
    new-instance v3, Lcom/yelp/android/ui/dialogs/c$c;

    invoke-direct {v3, p0, v2}, Lcom/yelp/android/ui/dialogs/c$c;-><init>(Lcom/yelp/android/ui/dialogs/c;Lcom/yelp/android/ui/dialogs/c$d;)V

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;)V

    :cond_3
    move-object v1, v2

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/c;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_6

    .line 121
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/c$a;->a(Lcom/yelp/android/ui/dialogs/c$a;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0204b4

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;I)V

    .line 127
    :goto_1
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/c$a;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 129
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/c$a;->a(Lcom/yelp/android/ui/dialogs/c$a;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, v1, Lcom/yelp/android/ui/dialogs/c$a;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, v1, Lcom/yelp/android/ui/dialogs/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, v1, Lcom/yelp/android/ui/dialogs/c$a;->b:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/c;->a:Ljava/util/HashSet;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Ljava/util/Set;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 134
    return-object p2

    .line 112
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/dialogs/c;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 113
    new-instance v1, Lcom/yelp/android/ui/dialogs/c$a;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/dialogs/c$a;-><init>(Lcom/yelp/android/ui/dialogs/c;Landroid/view/View;)V

    .line 114
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/dialogs/c$a;

    goto :goto_0

    .line 124
    :cond_6
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/c$a;->a(Lcom/yelp/android/ui/dialogs/c$a;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0204b6

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method
