.class public Lcom/yelp/android/ui/dialogs/y;
.super Lcom/yelp/android/ui/util/au;
.source "FiltersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/AttributeFilter;",
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

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->a:Ljava/util/HashSet;

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->b:Ljava/util/Calendar;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->c:Ljava/lang/Boolean;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/y;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/yelp/android/ui/dialogs/y;->d:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/y;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/y;->c:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/dialogs/ac;)V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/yelp/android/ui/dialogs/ac;->a(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/y;->b:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/y;Lcom/yelp/android/ui/dialogs/ac;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/ac;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/y;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/yelp/android/ui/dialogs/y;->d:I

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/y;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/yelp/android/ui/dialogs/y;->e:I

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/y;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/yelp/android/ui/dialogs/y;->e:I

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->b:Ljava/util/Calendar;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->c:Ljava/lang/Boolean;

    .line 184
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/y;->b:Ljava/util/Calendar;

    .line 186
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
    .line 174
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/y;->a:Ljava/util/HashSet;

    .line 175
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
    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public c()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->b:Ljava/util/Calendar;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 56
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    const v1, 0x7f0300a9

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v3, Lcom/yelp/android/ui/dialogs/ac;

    const v0, 0x7f0c02a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c02a7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    const v2, 0x7f0c02a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f0c02a6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/yelp/android/ui/dialogs/ac;-><init>(Landroid/widget/TextView;Landroid/widget/ToggleButton;Landroid/widget/Button;Landroid/view/View;)V

    .line 66
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    .line 74
    :goto_0
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->b(Lcom/yelp/android/ui/dialogs/ac;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/cq;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/y;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    .line 78
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->b(Lcom/yelp/android/ui/dialogs/ac;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020365

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    :goto_1
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->b(Lcom/yelp/android/ui/dialogs/ac;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cq;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/dialogs/y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 88
    new-instance v2, Lcom/yelp/android/ui/dialogs/z;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/dialogs/z;-><init>(Lcom/yelp/android/ui/dialogs/y;Lcom/yelp/android/serializable/AttributeFilter;Lcom/yelp/android/ui/dialogs/ac;)V

    .line 103
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->b(Lcom/yelp/android/ui/dialogs/ac;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->c(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->d(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->c(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/y;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 112
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OPEN_NOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 114
    if-nez v2, :cond_3

    .line 115
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->a(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    :goto_2
    return-object p2

    .line 68
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/ac;

    move-object v1, v0

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->b(Lcom/yelp/android/ui/dialogs/ac;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020366

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 117
    :cond_3
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->a(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    new-instance v2, Lcom/yelp/android/ui/dialogs/aa;

    invoke-direct {v2, p0, v1, v0}, Lcom/yelp/android/ui/dialogs/aa;-><init>(Lcom/yelp/android/ui/dialogs/y;Lcom/yelp/android/ui/dialogs/ac;Lcom/yelp/android/serializable/AttributeFilter;)V

    .line 144
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->a(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/Button;

    move-result-object v0

    new-instance v3, Lcom/yelp/android/ui/dialogs/ab;

    invoke-direct {v3, p0, p3, v2}, Lcom/yelp/android/ui/dialogs/ab;-><init>(Lcom/yelp/android/ui/dialogs/y;Landroid/view/ViewGroup;Landroid/app/TimePickerDialog$OnTimeSetListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/y;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/ac;->d(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f070433

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    :cond_4
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/ac;)V

    goto :goto_2
.end method
