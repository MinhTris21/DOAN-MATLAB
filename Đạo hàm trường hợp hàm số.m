
            f = app.NhaphamsoEditField.Value;
            f = str2func(['@(x)',f]);
            h = app.NhapbuochEditField.Value;
            x = app.GiatrixcantinhEditField.Value;
            pp = app.PhuongphapDropDown.Value;
            ss = app.SaisoDropDown.Value;

            if (pp == "tien")
                if (ss == "O(h)")
                    dx = (f(x+h)-f(x))/h;
                else
                    dx = (4*f(x+h)-3*f(x)-f(x+2*h))/(2*h);
                end
            elseif (pp == "lui")
                if (ss == "O(h)")
                    dx = (f(x)-f(x-h))/h;
                else
                    dx = (3*f(x)-4*f(x-h)+f(x-2*h))/(2*h);
                end
            else 
                dx = (f(x+h)-f(x-h))/(2*h);
            end
            app.KetquaEditField.Value = num2str(dx);
     