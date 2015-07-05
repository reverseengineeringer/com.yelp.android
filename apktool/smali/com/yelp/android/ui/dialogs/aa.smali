.class Lcom/yelp/android/ui/dialogs/aa;
.super Ljava/lang/Object;
.source "FiltersAdapter.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/ac;

.field final synthetic b:Lcom/yelp/android/serializable/AttributeFilter;

.field final synthetic c:Lcom/yelp/android/ui/dialogs/y;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/y;Lcom/yelp/android/ui/dialogs/ac;Lcom/yelp/android/serializable/AttributeFilter;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/aa;->a:Lcom/yelp/android/ui/dialogs/ac;

    iput-object p3, p0, Lcom/yelp/android/ui/dialogs/aa;->b:Lcom/yelp/android/serializable/AttributeFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/y;->b(Lcom/yelp/android/ui/dialogs/y;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/y;->c(Lcom/yelp/android/ui/dialogs/y;)I

    move-result v0

    if-eq p3, v0, :cond_2

    :cond_0
    move v0, v6

    .line 123
    :goto_0
    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/y;->d(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/y;->d(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/y;->d(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v3}, Lcom/yelp/android/ui/dialogs/y;->d(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/aa;->a:Lcom/yelp/android/ui/dialogs/ac;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/y;Lcom/yelp/android/ui/dialogs/ac;)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/y;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aa;->a:Lcom/yelp/android/ui/dialogs/ac;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/ac;->c(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aa;->a:Lcom/yelp/android/ui/dialogs/ac;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/ac;->d(Lcom/yelp/android/ui/dialogs/ac;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070433

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/aa;->c:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/y;->a(Lcom/yelp/android/ui/dialogs/y;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/aa;->b:Lcom/yelp/android/serializable/AttributeFilter;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    return-void

    .line 122
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
